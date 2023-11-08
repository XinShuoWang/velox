dt=$(date '+%m%d_%H%M')

for thread in 1 2 4 8 12 16 20 24 28 32
do
    set -x
    /root/Meta/velox/_build/release/velox/benchmarks/tpch/velox_tpch_benchmark --data_path=/root/Meta/tpch --run_query_verbose=1 --num_drivers=$thread >> ${dt}_benchmark.txt 2>&1
    set +x
    sleep 10
done