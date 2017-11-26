package hu.unideb.cardcommunity.service.validation;

public interface validationService {
	boolean mailValidation(String mailAddress);
	boolean userNameValidation(String userName);
	boolean isTheMailUsed(String mailAddress);
	boolean isTheUserNameUsed(String userName);
}
