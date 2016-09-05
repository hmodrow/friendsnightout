as yet unclassified
get
	"Process health check from Google Cloud"
	" objectUri := '/_ah/health'."
	self response: (ZnResponse ok: (ZnEntity with: 'OK'))