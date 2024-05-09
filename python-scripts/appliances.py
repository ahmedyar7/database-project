from bs4 import BeautifulSoup
import requests


class ScrapeAppliances:
    def __init__(self, url):
        self.url = url
        self.response = requests.get(self.url)
        self.data = self.response.text
        self.soup = BeautifulSoup(self.data, "html.parser")

    def get_data(self):
        items = self.soup.find_all(
            "div data-v-71681a98",
            class_="mt-2.text-gray-600.hover:text-blue-600.roboto-new.font-normal.leading-tight.product-title-size.text-ellipsis",
        )  # Assuming product names are within divs with class "product-name"
        self.all_items = []
        for item in items:
            item_text = item.text.strip()  # Stripping any leading/trailing whitespace
            self.all_items.append(item_text)
        print(self.all_items)


scrape = ScrapeAppliances("https://telemart.pk/home-and-kitchen-appliances.html")
scrape.get_data()
