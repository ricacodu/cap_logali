sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'Logali.orders',
            componentId: 'OrdersList',
            entitySet: 'Orders'
        },
        CustomPageDefinitions
    );
});