## SCONE FSPF Volume Demo
This repository contains SCONE FSPF volume demo.


### Before running

Check if you machine has the older driver (which uses the `/dev/isgx` device) or is using a newer version (using the `/dev/sgx_enclave` and `/dev/sgx_provision`). If using the first, edit the `docker-compose.yml` file to remove the newer devices and add the older one.

### Demo
Try it out by executing:

```bash
git clone https://github.com/scontain/volume-demo && cd volume-demo
```
Then, you execute the following command:
```bash
# When using a shared CAS, it is useful to generate a unique id.
export POSTFIX=$RANDOM-$RANDOM
export CAS_ADDR=scone-cas.cf

# Get MRENCLAVE of CAS at: https://sconedocs.github.io/public-CAS/
export CAS_MRENCLAVE="3061b9feb7fa67f3815336a085f629a13f04b0a1667c93b14ff35581dc8271e4"

docker-compose run volume-demo bash
```
Note that running with docker-compose it automatically start CAS service for you.
Next go to the demo directory:
```bash
 cd /demo/ && ./run.sh
```
Alternatively, you can just run this demo by a single command: 

```bash
docker-compose up
```
If you check the content of the input file in the encrypted volume:

```bash
cat encrypted_volume/input.txt
```

You will see only cipher text, e.g.,: 
```
À¹^E&¡<91>D>^Eû^O~Eãç«ò^N<88>p<87>Î95
```

Finally, tear down your execution: 

```bash
docker-compose down
```

### Contacts
Send emails to info@scontain.com
