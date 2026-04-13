# 2026-03-28T14:01:19.799149
import vitis

client = vitis.create_client()
client.set_workspace(path=".vitis_ws_atomflow_4byqsgtf")

client.delete_component(name="componentName")

comp = client.create_hls_component(name = "atomflow_controller_2024_2",part = "xczu49dr-ffvf1760-2-e",cfg_file = ["/home/xiaorang/Documents/ATOMFLOW/atomflow_controller/hls_config_atomflow.cfg"])

comp = client.get_component(name="atomflow_controller_2024_2")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

