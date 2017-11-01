package hu.unideb.cardcommunity.web.deck.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

import hu.unideb.cardcommunity.service.deck.model.DeckData;
import hu.unideb.corcommunity.service.deck.DeckListingService;
import hu.unideb.corcommunity.service.deck.api.IDeckListingService;

public class DeckTableModel extends LazyDataModel<DeckData> { 
	private IDeckListingService decklist;
	private List<DeckData> decks;

	
	public DeckTableModel() {
		decklist = new DeckListingService();
		decks = decklist.listByUserId(1);
	}

	@Override
	public DeckData getRowData(String rowKey) {
		if (decks == null || decks.isEmpty()) {
			return null;
		}
		Optional<DeckData> findFirst = decks.stream().filter(d -> d.getId().toString().equals(rowKey)).findFirst();
		return findFirst.isPresent() ? findFirst.get() : null;
	}

	@Override
	public Object getRowKey(DeckData object) {
		return object.getId();
	}

	@Override
	public List<DeckData> load(int first, int pageSize, String sortField, SortOrder sortOrder,
			Map<String, Object> filters) {
		List<DeckData> data = new ArrayList<>();

		// filter
		for (DeckData car : decks) {
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
			Collections.sort(data, new Comparator<DeckData>() {

				@Override
				public int compare(DeckData o1, DeckData o2) {
					try {
						Object value1 = DeckData.class.getField(sortField).get(o1);
						Object value2 = DeckData.class.getField(sortField).get(o2);

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
