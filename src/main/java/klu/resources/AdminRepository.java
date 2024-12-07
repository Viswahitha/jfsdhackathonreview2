package klu.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import klu.model.Signup;
import klu.model.User;

@Service
@Repository
public interface AdminRepository extends JpaRepository<User,String>{

}
