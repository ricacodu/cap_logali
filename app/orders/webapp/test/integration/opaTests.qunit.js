sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Logali/orders/test/integration/FirstJourney',
		'Logali/orders/test/integration/pages/OrdersList',
		'Logali/orders/test/integration/pages/OrdersObjectPage',
		'Logali/orders/test/integration/pages/ItemsOrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, ItemsOrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Logali/orders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheItemsOrdersObjectPage: ItemsOrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);