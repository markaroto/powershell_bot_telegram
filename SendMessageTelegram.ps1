function SendMessage_telegram{
    param(
    [string]$mensagem,
	[string]$token,
	[string]$idchat,
	[string]$urlproxy
    )    
    $url="https://api.telegram.org/bot$token/sendMessage?chat_id=$idchat&text=$mensagem"    
    $r= [system.net.webrequest]::create($url)
	if( $urlproxy -ne ""){
		$proxy = New-Object System.Net.WebProxy($urlproxy)
		$proxy.useDefaultCredentials = $true
    }
	$r.Proxy=$proxy
    $r=$r.GetResponse()    
}

