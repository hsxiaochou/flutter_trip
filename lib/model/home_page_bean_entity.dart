class HomePageBeanEntity {
	List<HomePageBeanBannerlist> bannerList;
	List<HomePageBeanSubnavlist> subNavList;
	List<HomePageBeanLocalnavlist> localNavList;
	HomePageBeanSalesbox salesBox;
	HomePageBeanConfig config;
	HomePageBeanGridnav gridNav;

	HomePageBeanEntity({this.bannerList, this.subNavList, this.localNavList, this.salesBox, this.config, this.gridNav});

	HomePageBeanEntity.fromJson(Map<String, dynamic> json) {
		if (json['bannerList'] != null) {
			bannerList = new List<HomePageBeanBannerlist>();(json['bannerList'] as List).forEach((v) { bannerList.add(new HomePageBeanBannerlist.fromJson(v)); });
		}
		if (json['subNavList'] != null) {
			subNavList = new List<HomePageBeanSubnavlist>();(json['subNavList'] as List).forEach((v) { subNavList.add(new HomePageBeanSubnavlist.fromJson(v)); });
		}
		if (json['localNavList'] != null) {
			localNavList = new List<HomePageBeanLocalnavlist>();(json['localNavList'] as List).forEach((v) { localNavList.add(new HomePageBeanLocalnavlist.fromJson(v)); });
		}
		salesBox = json['salesBox'] != null ? new HomePageBeanSalesbox.fromJson(json['salesBox']) : null;
		config = json['config'] != null ? new HomePageBeanConfig.fromJson(json['config']) : null;
		gridNav = json['gridNav'] != null ? new HomePageBeanGridnav.fromJson(json['gridNav']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bannerList != null) {
      data['bannerList'] =  this.bannerList.map((v) => v.toJson()).toList();
    }
		if (this.subNavList != null) {
      data['subNavList'] =  this.subNavList.map((v) => v.toJson()).toList();
    }
		if (this.localNavList != null) {
      data['localNavList'] =  this.localNavList.map((v) => v.toJson()).toList();
    }
		if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
		if (this.config != null) {
      data['config'] = this.config.toJson();
    }
		if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
		return data;
	}
}

class HomePageBeanBannerlist {
	String icon;
	String url;

	HomePageBeanBannerlist({this.icon, this.url});

	HomePageBeanBannerlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSubnavlist {
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanSubnavlist({this.icon, this.title, this.url, this.hideAppBar});

	HomePageBeanSubnavlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanLocalnavlist {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanLocalnavlist({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomePageBeanLocalnavlist.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanSalesbox {
	HomePageBeanSalesboxBigcard2 bigCard2;
	HomePageBeanSalesboxSmallcard4 smallCard4;
	HomePageBeanSalesboxSmallcard3 smallCard3;
	HomePageBeanSalesboxBigcard1 bigCard1;
	HomePageBeanSalesboxSmallcard2 smallCard2;
	HomePageBeanSalesboxSmallcard1 smallCard1;
	String icon;
	String moreUrl;

	HomePageBeanSalesbox({this.bigCard2, this.smallCard4, this.smallCard3, this.bigCard1, this.smallCard2, this.smallCard1, this.icon, this.moreUrl});

	HomePageBeanSalesbox.fromJson(Map<String, dynamic> json) {
		bigCard2 = json['bigCard2'] != null ? new HomePageBeanSalesboxBigcard2.fromJson(json['bigCard2']) : null;
		smallCard4 = json['smallCard4'] != null ? new HomePageBeanSalesboxSmallcard4.fromJson(json['smallCard4']) : null;
		smallCard3 = json['smallCard3'] != null ? new HomePageBeanSalesboxSmallcard3.fromJson(json['smallCard3']) : null;
		bigCard1 = json['bigCard1'] != null ? new HomePageBeanSalesboxBigcard1.fromJson(json['bigCard1']) : null;
		smallCard2 = json['smallCard2'] != null ? new HomePageBeanSalesboxSmallcard2.fromJson(json['smallCard2']) : null;
		smallCard1 = json['smallCard1'] != null ? new HomePageBeanSalesboxSmallcard1.fromJson(json['smallCard1']) : null;
		icon = json['icon'];
		moreUrl = json['moreUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
		if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
		if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
		if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
		if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
		if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
		data['icon'] = this.icon;
		data['moreUrl'] = this.moreUrl;
		return data;
	}
}

class HomePageBeanSalesboxBigcard2 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxBigcard2({this.icon, this.title, this.url});

	HomePageBeanSalesboxBigcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSalesboxSmallcard4 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxSmallcard4({this.icon, this.title, this.url});

	HomePageBeanSalesboxSmallcard4.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSalesboxSmallcard3 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxSmallcard3({this.icon, this.title, this.url});

	HomePageBeanSalesboxSmallcard3.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSalesboxBigcard1 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxBigcard1({this.icon, this.title, this.url});

	HomePageBeanSalesboxBigcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSalesboxSmallcard2 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxSmallcard2({this.icon, this.title, this.url});

	HomePageBeanSalesboxSmallcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanSalesboxSmallcard1 {
	String icon;
	String title;
	String url;

	HomePageBeanSalesboxSmallcard1({this.icon, this.title, this.url});

	HomePageBeanSalesboxSmallcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanConfig {
	String searchUrl;

	HomePageBeanConfig({this.searchUrl});

	HomePageBeanConfig.fromJson(Map<String, dynamic> json) {
		searchUrl = json['searchUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['searchUrl'] = this.searchUrl;
		return data;
	}
}

class HomePageBeanGridnav {
	HomePageBeanGridnavHotel flight;
	HomePageBeanGridnavHotel hotel;
	HomePageBeanGridnavHotel travel;

	HomePageBeanGridnav({this.flight, this.hotel, this.travel});

	HomePageBeanGridnav.fromJson(Map<String, dynamic> json) {
		flight = json['flight'] != null ? new HomePageBeanGridnavHotel.fromJson(json['flight']) : null;
		hotel = json['hotel'] != null ? new HomePageBeanGridnavHotel.fromJson(json['hotel']) : null;
		travel = json['travel'] != null ? new HomePageBeanGridnavHotel.fromJson(json['travel']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
		if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
		if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
		return data;
	}
}

class HomePageBeanGridnavFlight {
	HomePageBeanGridnavFlightItem2 item2;
	HomePageBeanGridnavFlightItem1 item1;
	String endColor;
	HomePageBeanGridnavFlightMainitem mainItem;
	HomePageBeanGridnavFlightItem4 item4;
	HomePageBeanGridnavFlightItem3 item3;
	String startColor;

	HomePageBeanGridnavFlight({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomePageBeanGridnavFlight.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomePageBeanGridnavFlightItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomePageBeanGridnavFlightItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomePageBeanGridnavFlightMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomePageBeanGridnavFlightItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomePageBeanGridnavFlightItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomePageBeanGridnavFlightItem2 {
	String title;
	String url;

	HomePageBeanGridnavFlightItem2({this.title, this.url});

	HomePageBeanGridnavFlightItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanGridnavFlightItem1 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavFlightItem1({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavFlightItem1.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavFlightMainitem {
	String icon;
	String title;
	String url;

	HomePageBeanGridnavFlightMainitem({this.icon, this.title, this.url});

	HomePageBeanGridnavFlightMainitem.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanGridnavFlightItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavFlightItem4({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavFlightItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavFlightItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavFlightItem3({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavFlightItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavHotel {
	HomePageBeanGridnavHotelItem1 item2;
	HomePageBeanGridnavHotelItem1 item1;
	String endColor;
	HomePageBeanGridnavHotelMainitem mainItem;
	HomePageBeanGridnavHotelItem1 item4;
	HomePageBeanGridnavHotelItem1 item3;
	String startColor;

	HomePageBeanGridnavHotel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomePageBeanGridnavHotel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomePageBeanGridnavHotelItem1.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomePageBeanGridnavHotelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomePageBeanGridnavHotelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomePageBeanGridnavHotelItem1.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomePageBeanGridnavHotelItem1.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomePageBeanGridnavHotelItem2 {
	String title;
	String url;

	HomePageBeanGridnavHotelItem2({this.title, this.url});

	HomePageBeanGridnavHotelItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanGridnavHotelItem1 {
	String statusBarColor;
	String title;
	String url;

	HomePageBeanGridnavHotelItem1({this.statusBarColor, this.title, this.url});

	HomePageBeanGridnavHotelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanGridnavHotelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;

	HomePageBeanGridnavHotelMainitem({this.statusBarColor, this.icon, this.title, this.url});

	HomePageBeanGridnavHotelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomePageBeanGridnavHotelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavHotelItem4({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavHotelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavHotelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavHotelItem3({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavHotelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavTravel {
	HomePageBeanGridnavTravelItem2 item2;
	HomePageBeanGridnavTravelItem1 item1;
	String endColor;
	HomePageBeanGridnavTravelMainitem mainItem;
	HomePageBeanGridnavTravelItem4 item4;
	HomePageBeanGridnavTravelItem3 item3;
	String startColor;

	HomePageBeanGridnavTravel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomePageBeanGridnavTravel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomePageBeanGridnavTravelItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomePageBeanGridnavTravelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomePageBeanGridnavTravelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomePageBeanGridnavTravelItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomePageBeanGridnavTravelItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomePageBeanGridnavTravelItem2 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavTravelItem2({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavTravelItem2.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavTravelItem1 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavTravelItem1({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavTravelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavTravelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavTravelMainitem({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavTravelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavTravelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavTravelItem4({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavTravelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomePageBeanGridnavTravelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomePageBeanGridnavTravelItem3({this.title, this.url, this.hideAppBar});

	HomePageBeanGridnavTravelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}
