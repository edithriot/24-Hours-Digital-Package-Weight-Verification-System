START

1. Define where the tool should look to find technology and support files.

2. Specify the main technology database that represents the standard cells 
   used for implementation.

3. Load the auxiliary component library that provides arithmetic and 
   pre-built functional blocks.

4. Combine the technology database and auxiliary library so the tool can 
   resolve all components used in the design.

5. Import the hardware description of the design written in a high-level 
   hardware language.

6. Parse the imported description and prepare it for building the internal 
   representation.

7. Construct the hierarchical representation of the top module called 
   "weight_verification_top".

8. Select this module as the active design to be processed.

9. Resolve connections and dependencies between all components and libraries.

10. Perform a structural validation to ensure the design is correct and 
    contains no structural issues.

11. Load the timing and constraint specifications that define clock behavior, 
    delays, and operating limits.

12. Indicate that the design should focus on minimizing silicon usage.

13. Transform the high-level design description into a gate-level 
    implementation optimized for performance, power, and area.

14. Generate multiple analysis summaries including:
      - silicon usage
      - overall design information
      - individual component usage
      - quality metrics
      - hardware resource utilization
      - timing behavior
      - power estimation

15. Export the constraint specifications used for the optimized design.

16. Produce a hierarchical gate-level hardware description of the optimized design.

17. Save an internal tool database version of the optimized design for later reuse.

END