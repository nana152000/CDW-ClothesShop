package clothesShop.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import clothesShop.model.SlidesModel;
@Service
public interface ISlidesService {
	List<SlidesModel> findAll();
	Long insert(String sql);
	
}
