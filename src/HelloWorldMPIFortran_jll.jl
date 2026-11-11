# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloWorldMPIFortran_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloWorldMPIFortran")
JLLWrappers.@generate_main_file("HelloWorldMPIFortran", Base.UUID("92c27a75-d611-5398-bab9-f1b986101c39"))
end  # module HelloWorldMPIFortran_jll
