import {NativeModules} from 'react-native';

const {RNReactNativePddISV} = NativeModules;

class PddISV {
    static init = async () => {
        return await RNReactNativePddISV.init({});
    };

    static getPati = async () => {
        return await RNReactNativePddISV.getPati({});
    }
}

export default PddISV;