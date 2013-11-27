gringotts = Bank.create(name: "Gringotts")
azkabank = Bank.create(name: "Azkabank")
buckbank = Bank.create(name: "BuckBank")

Loan.create(
  name: "Hogwarts tuition",
  monthly_payment: 112.05,
  first_payment_at: 1.year.ago,
  last_payment_at: 3.years.from_now,
  bank: gringotts
)

Loan.create(
  name: "Ollivanders' wand",
  monthly_payment: 10,
  first_payment_at: 8.months.ago,
  last_payment_at: 3.months.from_now,
  bank: gringotts
)

Loan.create(
  name: "Broomstick",
  monthly_payment: 29.99,
  first_payment_at: 7.months.ago,
  last_payment_at: 6.months.from_now,
  bank: azkabank
)

Loan.create(
  name: "Flying Ford Anglia",
  monthly_payment: 63.12,
  first_payment_at: 3.months.ago,
  last_payment_at: 3.years.from_now,
  bank: buckbank
)
