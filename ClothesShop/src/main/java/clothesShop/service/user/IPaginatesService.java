package clothesShop.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import clothesShop.dto.user.PaginatesDto;

@Service
public interface IPaginatesService {
	@Autowired
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);

}
