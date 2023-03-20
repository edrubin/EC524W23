# Setup ----------------------------------------------------------------------------------
  # Load packages
  pacman::p_load(fastverse, haven, here)

# Load full dataset ----------------------------------------------------------------------
  # Load the raw dataset
  full_dt = 'nat2021us.dta' |> read_dta()
  # Convert to data table
  setDT(full_dt)
  # Grab a random subset of 10,000 observations
  set.seed(42)
  sub_dt = full_dt[sample.int(n = nrow(full_dt), size = 1e4, replace = FALSE)]
  # Save the dataset as a CSV
  fwrite(
    x = sub_dt,
    file = here('data-final.csv')
  )
