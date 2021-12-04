<?php


namespace App\Helpers;

use SimpleXMLElement;

class BingMapApiHelper
{


    private $BING_MAP_API_KEY;
    private $BING_MAP_API_URL;


    function __construct()
    {

        $this->BING_MAP_API_KEY = config('app.bing_map_api_key');
        $this->BING_MAP_API_URL= config('app.bing_map_api_url');
    }

    public function bingMapApiParser($cord)
    {

        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => $this->BING_MAP_API_URL."/".$cord['lat'].",".$cord['lng']."?o=xml&key=".$this->BING_MAP_API_KEY,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
        ));


        $response = new SimpleXMLElement(curl_exec($curl));

        if (curl_errno($curl)) {

            return ['error'=>curl_error($curl),'data'=>[]];
        }
        curl_close($curl);
        return ['success'=>true,'data'=>$response];

    }
}
