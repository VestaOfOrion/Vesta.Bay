-- Credit to alsoandanswer from Aurorastation

ALTER TABLE `ss13_characters`
  ADD COLUMN `grad_colour` varchar(7) DEFAULT NULL AFTER `facial_colour`,
  ADD COLUMN `gradient_style` varchar(32) DEFAULT NULL AFTER `facial_style`;