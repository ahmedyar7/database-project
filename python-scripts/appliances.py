from bs4 import BeautifulSoup
from requests import get


class ScrapeAppliances:
    def __init__(self) -> None:
        self.response = get(url="https://telemart.pk/home-and-kitchen-appliances.html")
        self.data = self.response.text

        self.soup = BeautifulSoup(markup=self.data, features="html.parser")

    def get_data(self):
        """This function would get the data"""

        self.item = self.soup.find(
            "div h4",
            class_="col-span-3.bg-white.relative.cursor-pointer.p-0.5",
        )
        print(self.item)


scrape = ScrapeAppliances()
scrape.get_data()
