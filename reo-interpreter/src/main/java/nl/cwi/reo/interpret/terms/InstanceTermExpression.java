package nl.cwi.reo.interpret.terms;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.checkerframework.checker.nullness.qual.Nullable;

import nl.cwi.reo.interpret.Scope;
import nl.cwi.reo.interpret.instances.Instance;
import nl.cwi.reo.interpret.instances.InstanceExpression;
import nl.cwi.reo.interpret.variables.Identifier;
import nl.cwi.reo.util.Monitor;

// TODO: Auto-generated Javadoc
/**
 * Interpretation of an instance as a term.
 * 
 * @param 
 *            Reo semantics type
 */
public class InstanceTermExpression implements TermExpression {

	/**
	 * Component instance.
	 */
	private InstanceExpression instance;

	/**
	 * Constructs a new component instance term.
	 * 
	 * @param instance
	 *            component instance
	 */
	public InstanceTermExpression(InstanceExpression instance) {
		this.instance = instance;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	@Nullable
	public List<Term> evaluate(Scope s, Monitor m) {
		Instance inst = this.instance.evaluate(s, m);
		if (inst == null)
			return null;
		return Arrays.asList(inst);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Set<Identifier> getVariables() {
		return instance.getVariables();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String toString() {
		return instance.toString();
	}
}
