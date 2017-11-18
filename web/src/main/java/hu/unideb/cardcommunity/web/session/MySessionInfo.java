package hu.unideb.cardcommunity.web.session;

import org.springframework.context.annotation.Scope;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import hu.unideb.cardcommunity.service.user.UserService;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;

@Component
@Scope("session")
public class MySessionInfo {
	private IUserService usvc = new UserService();

    private UserData user;

    public UserData getCurrentUser() {
        if (user == null) {
            String name = ((UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername();
			user = usvc.findByUserName(name);
        }
        return user;
    }
}