package dao;

import java.sql.Connection;
import java.util.List;

import models.Katalog;


public class KatalogDAO {
	List<Katalog> Katalog = List.of(
			new Katalog(1, "my handsome product", 22.45, "test description"),
			new Katalog(2, "product 2", 2233.99, "test description"),
			new Katalog(3, "p1", 2232.45, "test description"),
			new Katalog(4, "p1", 22.45, "test description"),
			new Katalog(5, "p1", 22.45, "test description"),
			new Katalog(6, "p1", 2232.45, "test description"),
			new Katalog(7, "p1", 22.45, "test description"),
			new Katalog(8, "p1", 22.45, "test description"),
			new Katalog(9, "p1", 22.45, "test description"),
			new Katalog(10, "p1", 2232.45, "test description"),
			new Katalog(11, "p1", 22.45, "test description"),
			new Katalog(12, "p1", 22.45, "test description")
		);
		
		public List<Katalog> getAllKatalog() {
			return this.Katalog;
		}
		
		public Katalog getKatalog(int id) throws Exception {
			for (Katalog k: this.Katalog) {
				if (id == k.getId()) {
					return k;
				}
				
			}
			throw new Exception("Katalog with id " + id + " not found");
		}

		public boolean deleteKatalog(int id) {
			return this.Katalog.removeIf(k -> k.getId() == id);
		}
		
}
