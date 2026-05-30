# r53.tf

resource "aws_route53_record" "records" {

  for_each = aws_instance.example

  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1

  records = [each.value.private_ip]

  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {

  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = 1

  records = [aws_instance.example["frontend"].public_ip]

  allow_overwrite = true
}