package models;

public class Katalog {
	
		private int id;
		private String name;
		private double price;
		private String description;
		
		public Katalog() {
		}

		public Katalog(int id, String name, double price, String description) {
			super();
			this.id = id;
			this.name = name;
			this.price = price;
			this.description = description;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public double getPrice() {
			return price;
		}

		public void setPrice(double price) {
			this.price = price;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

}
