package org.car2x.veins.base.modules;

// Base module for every mac layer module
simple BaseMacLayer extends BaseLayer like IWirelessMac
{
    parameters:
        @class(BaseMacLayer);
        int mtu = default(1500);
        bool   coreDebug = default(false);          // debug switch
        double headerLength @unit(bit);           // length of the MAC packet header (in bits)
        string address = default("auto");         // MAC address as hex string (12 hex digits), or
                                                  // "auto". "auto" values will be replaced by
                                                  // a generated MAC address in init stage 1.
}
