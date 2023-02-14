## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:
```bash
 helm repo add trips https://tripsplatform.github.io/charts
 ```

If you had already added this repo earlier, run `helm repo update` to retrieve the latest versions of the packages. 
You can then run `helm search repo trips` to see the charts.

To install the nestjs chart:
```bash
helm install my-nestjs trips/nestjs
```

To uninstall the chart:
```bash
helm delete my-nestjs
```
