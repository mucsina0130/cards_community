package hu.unideb.cardcommunity.web.security;

import java.util.Arrays;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import hu.unideb.cardcommunity.service.user.UserService;
import hu.unideb.cardcommunity.service.user.api.IUserService;
import hu.unideb.cardcommunity.service.user.model.UserData;

@Service
public class MyUserDetailsService implements UserDetailsService {
	private IUserService usvc = new UserService();
	
	@Override
	public UserDetails loadUserByUsername(String arg0) throws UsernameNotFoundException {
		UserData u = usvc.findByUserName(arg0);
	       if (u == null) {
	            throw new UsernameNotFoundException(arg0);
	        }
		User user = new User(u.getUserName(), u.getPassword(), Arrays.asList(new SimpleGrantedAuthority("ROLE_USER")));
		
		return user;
	}

}
