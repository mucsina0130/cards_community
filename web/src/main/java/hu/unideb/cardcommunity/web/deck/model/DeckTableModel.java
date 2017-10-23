package hu.unideb.cardcommunity.web.deck.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

public class DeckTableModel extends LazyDataModel<Deck> {
	private List<Deck> decks = randomList();

	@Override
	public Deck getRowData(String rowKey) {
		if (decks == null || decks.isEmpty()) {
			return null;
		}
		Optional<Deck> findFirst = decks.stream().filter(d -> d.getId().toString().equals(rowKey)).findFirst();
		return findFirst.isPresent() ? findFirst.get() : null;
	}

	private List<Deck> randomList() {
		List<Deck> result = new ArrayList<>();
		for (int i = 1; i < 10; i++) {
			Deck e = new Deck();
			e.setId((long) i);
			e.setName("pakli"+ i);
			e.setGame("játék"+ new Random().nextInt(3));
			result.add(e);
		}
		return result;
	}

	@Override
	public Object getRowKey(Deck object) {
		return object.getId();
	}

	@Override
	public List<Deck> load(int first, int pageSize, String sortField, SortOrder sortOrder,
			Map<String, Object> filters) {
		List<Deck> data = new ArrayList<>();

		// filter
		for (Deck car : decks) {
			boolean match = true;

//			if (filters != null) {
//				for (Iterator<String> it = filters.keySet().iterator(); it.hasNext();) {
//					try {
//						String filterProperty = it.next();
//						Object filterValue = filters.get(filterProperty);
//						String fieldValue = String.valueOf(car.getClass().getField(filterProperty).get(car));
//
//						if (filterValue == null || fieldValue.startsWith(filterValue.toString())) {
//							match = true;
//						} else {
//							match = false;
//							break;
//						}
//					} catch (Exception e) {
//						match = false;
//					}
//				}
//			}

			if (match) {
				data.add(car);
			}
		}

		// sort
		if (sortField != null) {
			Collections.sort(data, new Comparator<Deck>() {

				@Override
				public int compare(Deck o1, Deck o2) {
					try {
						Object value1 = Deck.class.getField(sortField).get(o1);
						Object value2 = Deck.class.getField(sortField).get(o2);

						int value = ((Comparable) value1).compareTo(value2);

						return SortOrder.ASCENDING.equals(sortOrder) ? value : -1 * value;
					} catch (IllegalArgumentException | IllegalAccessException | NoSuchFieldException
							| SecurityException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return 0;

				}
			});
		}

		// rowCount
		int dataSize = data.size();
		this.setRowCount(dataSize);

		// paginate
		if (dataSize > pageSize) {
			try {
				return data.subList(first, first + pageSize);
			} catch (IndexOutOfBoundsException e) {
				return data.subList(first, first + (dataSize % pageSize));
			}
		} else {
			return data;
		}
	}
}
