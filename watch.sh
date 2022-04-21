#!/bin/bash

CURL_BESTBUY="curl -m 10 -s 'https://www.bestbuy.com/api/3.0/priceBlocks?skus=6430161' \
  -H 'authority: www.bestbuy.com' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36' \
  -H 'accept: */*' \
  -H 'sec-gpc: 1' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.bestbuy.com/site/sony-playstation-5-digital-edition-console/6430161.p?skuId=6430161' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: SID=35694072-fab8-4ffa-9a52-d9f72ed5b34d; pst2=454|N; oid=1338360800; vt=db5566e3-4dfb-11ec-ae58-120fb70354bf; CTT=1916a00ffe0adb89c66d34dca9376b29; rxVisitor=16378504678699D8KK7AEN97HAHPIGK6NTQ1ENPAC31C1; COM_TEST_FIX=2021-11-25T14%3A27%3A47.897Z; basketTimestamp=1637850468500; s_ecid=MCMID%7C46388928812896923598583724015950930231; AMCVS_F6301253512D2BDB0A490D45%40AdobeOrg=1; _cs_mk=0.2470272373346487_1637850473392; s_cc=true; aam_uuid=52788458554611747579096446247256754197; locDestZip=11576; locStoreId=454; _cs_c=1; dtCookie=v_4_srv_1_sn_4AJ5SVT7Q0K2K7HPFFHI4JKT64UKLFJ5_app-3Aea7c4b59f27d43eb_1_app-3A1b02c17e3de73d2a_1_ol_0_perc_100000_mul_1; sc-location-v2=%7B%22meta%22%3A%7B%22CreatedAt%22%3A%222021-11-25T14%3A27%3A57.067Z%22%2C%22ModifiedAt%22%3A%222021-11-27T19%3A47%3A05.388Z%22%2C%22ExpiresAt%22%3A%222022-11-27T19%3A47%3A05.388Z%22%7D%2C%22value%22%3A%22%7B%5C%22physical%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2211576%5C%22%2C%5C%22source%5C%22%3A%5C%22A%5C%22%2C%5C%22captureTime%5C%22%3A%5C%222021-11-25T14%3A27%3A57.147Z%5C%22%7D%2C%5C%22destination%5C%22%3A%7B%5C%22zipCode%5C%22%3A%5C%2211576%5C%22%7D%2C%5C%22store%5C%22%3A%7B%5C%22storeId%5C%22%3A%5C%22454%5C%22%2C%5C%22zipCode%5C%22%3A%5C%2211590%5C%22%2C%5C%22storeHydratedCaptureTime%5C%22%3A%5C%222021-11-27T19%3A47%3A05.388Z%5C%22%7D%7D%22%7D; bby_cbc_lb=p-browse-e; physical_dma=501; customerZipCode=07101|N; ltc=%20; bm_sz=EEBC353D32D9C3D1DCB8BD0ED05DEEF0~YAAQRvo7F9Q/WJl9AQAAds22Fg7L8B8GC2BAjrIWc5F6TMXWRuAw0BBgUUq/utqKgN8AuCgVqDnkfkYkmK6ou3jdQ/MvwjpK1j7Zvb0w+JkbJVJy1+RIDifD+v+VNLwZPIuWvb6aC3gu3IaGLZ+MKlyYEkqIkRvCIbY84kkY79lqcapDWUPVIVs8aJsr30IFcN/211tTnWYtLmXiJODnyUFmb12Mbh56cr0rK3TFY4X6JUKTmuLsY+pnpbVQxGz9icpa8VKOEab9jcx0+0AxdAcBGhEMENyUOl8BZXQ/dHcZDM9Atn0RT77HhDWygBW7eSrMuQGuTo4H08JRlMriaxsdvEymPuK6umrl7/Xc5zK0RAs6L2YsCzY3o/H8qFifolHMa/s4TtdQajrxblPo+Zw3~4338226~3619124; _abck=538EE483377623B8DF36387674300A44~0~YAAQRvo7F9M/WJl9AQAAds22Fgc5K622BSic7NcqGRmWtqjhPUo6/uM1tMBynz+txGTcxxRlC/K8l3AbysoTfsw5+CAkzPich5RhcXXATiuoXllFzu4QycH6/wZrEjqTxq+v2AQhnm0vcpUYvI5QUlEqNfbM+PmcA/QhpNxwJiKCdPrxnpMaorfi/dt0Wv8+RPnvGttglnaA6ajx/d/9MzNp9DBh7k9NoiDtMsEV7ZVhnX/ea9nSZxoAexXsYp52r+xs1ndeKovBwKaDYwX7G+2WBUpIqog9k0JPptHEU1LJKRR+OPePpJFuq0Cz6VMEFVhH8jbqjP4peODuBPAYA3cHt0a6BHlbHOjSbbMt+WBiY0lI22FZ+TIt/PH6oBpM1pJbK9KXhEZmUsdyfQa3XDfjKDkfYHUErlarW+0GhBe3PTD2WThHYuK69Bh5tQ==~-1~-1~-1; bby_rdp=l; bby_prc_lb=p-prc-e; CTE24=T; bby_ispu_lb=p-ispu-e; bby_shpg_lb=p-shpg-e; partner=212%261%262022-01-01+11%3a36%3a42.000; BestBuyErrorSplunkLogging=https://www.bestbuy.com/site/playstation-5/ps5-consoles/; dtSa=-; s_sq=%5B%5BB%5D%5D; c2=Video%20Games%3A%20PlayStation%205%3A%20PS5%20Consoles%3A%20pdp; AMCV_F6301253512D2BDB0A490D45%40AdobeOrg=1585540135%7CMCMID%7C46388928812896923598583724015950930231%7CMCAID%7CNONE%7CMCOPTOUT-1641065947s%7CNONE%7CvVersion%7C4.4.0; _cs_id=55d31d2d-49f8-ab6f-cb77-d6b941a35f45.1637850484.4.1641058763.1641058663.1631902107.1672014484929; _cs_s=3.0.0.1641060563905; dtLatC=5; rxvt=1641060574464|1641058587346; dtPC=1$58770977_24h-vAOAUNUEGPUCMPACMBBMDAENHFMCUDTOC-0e23' \
  --compressed > /tmp/bestbuy.scan"

CURL_TARGET="curl -m 10 'https://redsky.target.com/redsky_aggregations/v1/web/plp_search_v1?key=ff457966e64d5e877fdbad070f276d18ecec4a01&category=hj96d&channel=WEB&count=24&default_purchasability_filter=true&max_price=600&member_id=10041239732&min_price=350&offset=0&page=%2Fc%2Fhj96d&platform=desktop&pricing_store_id=3259&scheduled_delivery_store_id=3237&store_ids=3259%2C2811%2C1887%2C1139%2C1150&useragent=Mozilla%2F5.0+%28Macintosh%3B+Intel+Mac+OS+X+10_15_7%29+AppleWebKit%2F537.36+%28KHTML%2C+like+Gecko%29+Chrome%2F96.0.4664.110+Safari%2F537.36&visitor_id=017D3EFBD55F0201BFB3DB22FDF244FE' \
  -H 'Accept: application/json' \
  -H 'Referer: https://www.target.com/c/playstation-5-video-games/-/N-hj96d?Nao=0&minPrice=350&maxPrice=600' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36' \
  --compressed > /tmp/target.scan"
# CURL_TARGET="curl -m 10 'https://redsky.target.com/redsky_aggregations/v1/web/pdp_fulfillment_v1?key=ff457966e64d5e877fdbad070f276d18ecec4a01&tcin=81114596&store_id=3259&store_positions_store_id=3259&has_store_positions_store_id=true&zip=11021&state=NY&latitude=40.790&longitude=-73.730&scheduled_delivery_store_id=3237&pricing_store_id=3259&has_pricing_store_id=true&is_bot=false' \
#   -H 'authority: redsky.target.com' \
#   -H 'accept: application/json' \
#   -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36' \
#   -H 'sec-gpc: 1' \
#   -H 'origin: https://www.target.com' \
#   -H 'sec-fetch-site: same-site' \
#   -H 'sec-fetch-mode: cors' \
#   -H 'sec-fetch-dest: empty' \
#   -H 'referer: https://www.target.com/' \
#   -H 'accept-language: en-US,en;q=0.9' \
#   -H 'cookie: TealeafAkaSid=jm-yIN9gih0DBT-JXPJ9iSPbevDX6xle; visitorId=017E324CE5DA02019B0D4C2808B3776E; sapphire=1; UserLocation=11021|40.790|-73.730|NY|US; adaptiveSessionId=A1521336830; egsSessionId=8f1c6e17-9885-4940-91cf-f42e1c7c5c9b; accessToken=eyJraWQiOiJlYXMyIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiI0NTQxOGQxYi04ZGQ2LTQzYTYtOTUzOS00Y2QwZjdlNWNjNWEiLCJpc3MiOiJNSTYiLCJleHAiOjE2NDE2MDc4MDgsImlhdCI6MTY0MTUyMTQwOCwianRpIjoiVEdULjI5NDJiNGJmMTdmZTQ4M2I4MjI5ZDY0MmEzYmIyOWEyLWwiLCJza3kiOiJlYXMyIiwic3V0IjoiRyIsImRpZCI6IjNiMzZmYTE1YzQzNGJhZjRlMDEyOTcxMDYxNDAzMzk2NDQ1OGQ2OTQxM2NkZTg2MzkyMWJjZmE0NmRkNmYyMzAiLCJzY28iOiJlY29tLm5vbmUsb3BlbmlkIiwiY2xpIjoiZWNvbS13ZWItMS4wLjAiLCJhc2wiOiJMIn0.ThWaI8ERl0eg2fUsfZK6l_L4pACVNm-2ghJRCzMgttd4UNGwuwLw10CnvTpFy3ZZZ-8k4UDE6yhgHZgWLTIrxNWNj98IMwSrKpgz4WD5mOfVCmPSAMd37UWwWwwmu-cL9n7UJeJj_s6_CpEvw--SmQFO5Hi5-5pCkT1fAWLC2F8n6GpNdrBCyjeijb3wQeSH2-sHd6_JJU58Bq7hQxOw75rTqLQhHktiTlFSm_uJezYNRytJsJv1KRAlzKJmqkjdEyY4Fz6RALP380OK_s0qD_tscmouYZTCXPkhx6LP6HrbXMGnZGk5KJ5nFyG_lXzgwfskDur6GK4epILb4M383A; idToken=eyJhbGciOiJub25lIn0.eyJzdWIiOiI0NTQxOGQxYi04ZGQ2LTQzYTYtOTUzOS00Y2QwZjdlNWNjNWEiLCJpc3MiOiJNSTYiLCJleHAiOjE2NDE2MDc4MDgsImlhdCI6MTY0MTUyMTQwOCwiYXNzIjoiTCIsInN1dCI6IkciLCJjbGkiOiJlY29tLXdlYi0xLjAuMCIsInBybyI6eyJmbiI6bnVsbCwiZW0iOm51bGwsInBoIjpmYWxzZSwibGVkIjpudWxsLCJsdHkiOmZhbHNlfX0.; refreshToken=EeZy0NrEXGJCcBxooShMGwDHQpiTElAlUFEssRLd9W1nJXfDXs1wANejxoVURKwHXjTq7iWh4m6OM-5BN_hEqA; guestType=G|1641521408000; fiatsCookie=DSI_3259|DSN_Port%20Washington%20North|DSZ_11050; criteo={}; tlThirdPartyIds={%22pt%22:%22v2:698e17b796b2465480d50fd22dbb41a36ecd5bd5106fa7eb0a25f09f6f7a888a|a7ee6c0b69681e36bd4d1a8c728f742c17a7f194cdea67dc88831049b97be6ff%22}; _mitata=ODQzMDQ5OGM2MTA5NmY2ODdjOGY0ZTUxYWQ3NTAxYmE0NzgwNDExMDg1MDY0OTIwMTY0NTZjOTJlYWQ2NjdhYg==_/@#/1641521469_/@#/cywcCHclHigLsFdd_/@#/MWJiYTg0M2EyYTE1M2ZiZGZhMjAwMjkwYTQ5YjE0NDgxMjQ0ODA5ZTY2ZGIxNzI3ZjkxOGNiYzZlY2I5ZTgzYw==_/@#/000; targetMobileCookie=guestLogonId:null~guestDisplayName:null~guestHasVerifiedPhone:false; ffsession={%22sessionHash%22:%22ee5cc349889021641521409491%22%2C%22sessionHit%22:3}' \
#   --compressed > /tmp/target.scan"

CURL_BANDH="curl -m 10 'https://www.bhphotovideo.com/api/item/p/product-details?from=cli&aperture=1&cliReqId=5785e188-5582-472b-ac67-2f76711420d2-cli-8' \
  -H 'authority: www.bhphotovideo.com' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'x-requested-with: XMLHttpRequest' \
  -H 'x-csrf-token: de259f2d142d129a5d564e841cd2c4f7' \
  -H 'x-app-type: desktop' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36' \
  -H 'x-aperture-fe-original-url: /c/product/1595084-REG/sony_3005719_playstation_5_digital_edition.html?SID=tomsguide-us-7873224012797469000' \
  -H 'content-type: application/json' \
  -H 'sec-gpc: 1' \
  -H 'origin: https://www.bhphotovideo.com' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.bhphotovideo.com/c/product/1595084-REG/sony_3005719_playstation_5_digital_edition.html?SID=tomsguide-us-7873224012797469000' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: SSLB_C=0; SSID_C=CQDNcx0AAAAAAACVZtJhZNMDHZVm0mEBAAAAAAAAAAAAlWbSYQANyA; SSSC_C=333.G7048809157411197796.1|0.0; SSRT_C=lWbSYQAAAA; SSPV_C=BPwAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAA; mapp=0; locale=en; build=20211227v10-20211227v10; dpi=cat=2,cur=USD,app=D,lang=E,view=L,lgdin=N,cache=release-WEB-20211227v10-BHJ-DVB29444-13; sessionKey=48532a8a-a6dc-49c0-b46c-eaf97be318c8; utkn=de259f2d142d129a5d564e841cd2c4f7; aperture-be-commit-id=n/a; sshc=cfb52caacd0b28eae79684ba1ae177b0; lpi=cat=2,cur=USD,app=D,lang=E,view=L,lgdin=N,cache=release-WEB-20211227v10-BHJ-DVB29444-13,ipp=24,view=L,sort=BS,priv=N,state=NY; JSESSIONID=G3sd4LhL3VGJUHN2g5KDXO7TI3WOcpuv\u0021-1410827441; cartId=39393787904; cookieID=360901420271641178773582; uui=800.606.6969|; _pxhd=IBtKinycTvsXa2JLvO6yRUohw8hRTlJzd0yiYVxo0WB2cayJWgMDP3E0PcNMOMJVNVpml9uf5-6n0w6K0uAWIA==:VYSjPHnZKsJRCzSTcOtwTN1thGC24K10KvJg488IGDyRNaXRhTCi2ZluKKemeNkZEXYdGj0PLfW2XKn9Rci1NgR35zHBEpnShvrjpTqToRo=; cf-colo=EWR; __cf_bm=H1cgVqq9BgjGoicldFDzkuhhDd4oV79svPjucH8AYu4-1641178773-0-AT0nGwWbDsFwptexJLLbH3HQBZe/Tu2IlTpw4zW9LjR8Ek6+HuK+HTN3TYWDft2yYGJl72PE1SNpPzGbymW0ii3H7GOQiYuz22oRRliXYbmA; __cfruid=50cbea84317e11cf571d3d31c18ff25b62e668c0-1641178773; aperture-be-commit-id=n/a; TS0188dba5=01ec39615f7db52f10e30551f65256239cce165e808c0673a4e27c87c4d2c65e64e0b1523ab5e3535cb8659d40c80125d83afca194893360a6b903d8f7ca17333c7a5762e3dc05bbba91e914e29f2df1b7d94f3d36acdda6ef2ba82664de949ce6abf12c44; TS0188dba5_77=080f850069ab2800c804da8fe12bbb669583e8cb442bb041aa8437352d9d3058017e87e20dfcf7b2bf6e84c9b7de812608227f6ee5824000fc7129885fbb8c7ce210e86be212e8f93b4632698ab861c7c2c710ff73144a41817351a521d772a8819b57010994cb4d13f154b16ce022b3d653d3104bc839a1; TS01d628c4=01ec39615ff802da8c2c389461f597667bc87db30d8c0673a4e27c87c4d2c65e64e0b1523a030e48865618b8750155601f0254c3de915af5ee256e9ce5129e800de6aca30a072f9b54b3269e8f91cd1068883b69771363d6f2b979214abd8125a47b8de1900538a2ac0516485880968ee7d0eee0cb203511276ecf8a3601f81c1dbc7f0d213232667b0b7cf5d9c4bdb154ecd5ad1995c72c6b8f993c28b7606a38e655e6a4d5ad51bd60400d58b911865d23ea5a9be2bc620dbbb291a954bd038b1756b3e0cb7db586f4574ff33d2de3e13dafecb7; forterToken=ccd3916d527f41da972972f46ef9de41_1641178786886_187_dUAL43b_13ck; app_cookie=1641178788; TS01e1f1fd=01ec39615f127756ea01bf94ef98bff7a6f55a31da8c0673a4e27c87c4d2c65e64e0b1523a6ac90ac18b3415d6a50f878de13299881392fd1688b4f14e7aac9e63f905619d318b9f58627d752aa22ca362b580da89d74adddb830400a97c0768511f85f99d6d3b1075a10803bc0341c40a9d579e03; TopBarCart=0|0' \
  --data-binary "@bandh-data.json" \
  --compressed > /tmp/bandh.scan"

CURL_PSN="curl -m 10 'https://api.direct.playstation.com/commercewebservices/ps-direct-us/users/anonymous/products/productList?fields=BASIC&productCodes=3006647' \
  -H 'authority: api.direct.playstation.com' \
  -H 'accept: */*' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36' \
  -H 'content-type: application/json' \
  -H 'sec-gpc: 1' \
  -H 'origin: https://direct.playstation.com' \
  -H 'sec-fetch-site: same-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://direct.playstation.com/' \
  -H 'accept-language: en-US,en;q=0.9' \
  --compressed > /tmp/psn.scan"


alert () {
  echo "Bruno come on hurry, ${1} has PS5 stock"
  echo "##########################"
  echo "####   ALERT ${1}   ####"
  echo "##########################"
  
  echo "BestBuy - https://www.bestbuy.com/site/sony-playstation-5-digital-edition-console/6430161.p?skuId=6430161"
  echo "Target - https://www.target.com/c/playstation-5-video-games/-/N-hj96d"
  echo "B&H - https://www.bhphotovideo.com/c/product/1595084-REG/sony_3005719_playstation_5_digital_edition.html"

  curl -X POST https://api.twilio.com/2010-04-01/Accounts/$TWILIO_ACCOUNT_SID/Calls.json \
  --data-urlencode "Url=http://demo.twilio.com/docs/voice.xml" \
  --data-urlencode "To=+1XXXXXXXX" \
  --data-urlencode "From=+14158494556" \
  -u $TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN

  ./sendmail.sh ${1}
}

while true
do
    echo "Scanning PS5 stores..."
    # BESTBUY
    eval ${CURL_BESTBUY}
    cat /tmp/bestbuy.scan | grep -q "SOLD_OUT" || alert "BestBuy"
    # TARGET
    eval ${CURL_TARGET}
    cat /tmp/target.scan | jq '.data.search.products' | jq length | grep -wq "1" || alert "Target"
    # cat /tmp/target.scan | jq '.data' | jq length | grep -wq "0" || alert "Target"
    # B&H
    eval ${CURL_BANDH}
    cat /tmp/bandh.scan | jq '.data[].priceInfo.addToCartButton' | grep -q "NONE" || alert "B&H"
    # PSN
    eval ${CURL_PSN}
    cat /tmp/psn.scan | jq -r '.products[].stock.stockLevelStatus' | grep -q "outOfStock" || alert "PSN"

    sleep $(shuf -i 10-35 -n 1)
done
