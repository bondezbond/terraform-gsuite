variable "zone_id" {}

resource "aws_route53_record" "mx" {
  zone_id = "${var.zone_id}"
  name = ""
  type = "MX"
  records = [
    "10 ASPMX.L.GOOGLE.COM",
    "20 ALT1.ASPMX.L.GOOGLE.COM",
    "30 ALT2.ASPMX.L.GOOGLE.COM",
    "40 ASPMX2.GOOGLEMAIL.COM",
    "50 ASPMX3.GOOGLEMAIL.COM",
  ]
  ttl = "3600"
}

resource "aws_route53_record" "calendar_cname" {
  zone_id = "${var.zone_id}"
  name = "calendar"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
resource "aws_route53_record" "email_cname" {
  zone_id = "${var.zone_id}"
  name = "email"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
resource "aws_route53_record" "imap_cname" {
  zone_id = "${var.zone_id}"
  name = "imap"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
resource "aws_route53_record" "mail_cname" {
  zone_id = "${var.zone_id}"
  name = "mail"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
resource "aws_route53_record" "pop_cname" {
  zone_id = "${var.zone_id}"
  name = "pop"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
resource "aws_route53_record" "smtp_cname" {
  zone_id = "${var.zone_id}"
  name = "smtp"
  type = "CNAME"
  records = [
    "ghs.googlehosted.com"
  ]
  ttl = "3600"
}
