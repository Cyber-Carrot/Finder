
/*
 * generated by Xtext 2.12.0
 */
package nl.utwente.fmt.ras.jvmmodel

import nl.utwente.fmt.ras.interpreter.GameInterpreter
import nl.utwente.fmt.ras.ras.Game
import org.eclipse.xtext.common.types.JvmDeclaredType
import org.eclipse.xtext.xbase.jvmmodel.AbstractModelInferrer
import org.eclipse.xtext.xbase.jvmmodel.IJvmDeclaredTypeAcceptor

/**
 * <p>Infers a JVM model from the source model.</p> 
 * 
 * <p>The JVM model should contain all elements that would appear in the Java code 
 * which is generated from the source model. Other models link against the JVM model rather than the source model.</p>     
 */
class RasJvmModelInferrer extends AbstractModelInferrer {

	/**
	 * The dispatch method {@code infer} is called for each instance of the
	 * given element's type that is contained in a resource.
	 * 
	 * @param element
	 *            the model to create one or more
	 *            {@link JvmDeclaredType declared
	 *            types} from.
	 * @param acceptor
	 *            each created
	 *            {@link JvmDeclaredType type}
	 *            without a container should be passed to the acceptor in order
	 *            get attached to the current resource. The acceptor's
	 *            {@link IJvmDeclaredTypeAcceptor#accept(org.eclipse.xtext.common.types.JvmDeclaredType)
	 *            accept(..)} method takes the constructed empty type for the
	 *            pre-indexing phase. This one is further initialized in the
	 *            indexing phase using the lambda you pass as the last argument.
	 * @param isPreIndexingPhase
	 *            whether the method is called in a pre-indexing phase, i.e.
	 *            when the global index is not yet fully updated. You must not
	 *            rely on linking using the index if isPreIndexingPhase is
	 *            <code>true</code>.
	 */
	def dispatch void infer(Game game, IJvmDeclaredTypeAcceptor acceptor, boolean isPreIndexingPhase) {

		if (isPreIndexingPhase || game === null || game.getSetup() === null) {
			// Only run when indexing is complete
			return
		}

		var interpreter = new GameInterpreter
		interpreter.setup(game)
//		interpreter.handleAction("play deck table clubseight");
//		interpreter.handleAction("draw drawingpile deck");
		interpreter.startGame()
	}
}