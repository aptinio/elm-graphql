-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Union.PullRequestTimelineItem exposing (onAssignedEvent, onBaseRefForcePushedEvent, onClosedEvent, onCommit, onCommitCommentThread, onCrossReferencedEvent, onDemilestonedEvent, onDeployedEvent, onHeadRefDeletedEvent, onHeadRefForcePushedEvent, onHeadRefRestoredEvent, onIssueComment, onLabeledEvent, onLockedEvent, onMergedEvent, onMilestonedEvent, onPullRequestReview, onPullRequestReviewComment, onPullRequestReviewThread, onReferencedEvent, onRenamedTitleEvent, onReopenedEvent, onReviewDismissedEvent, onReviewRequestRemovedEvent, onReviewRequestedEvent, onSubscribedEvent, onUnassignedEvent, onUnlabeledEvent, onUnlockedEvent, onUnsubscribedEvent, selection)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.PullRequestTimelineItem) -> SelectionSet constructor Github.Union.PullRequestTimelineItem
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onCommit : SelectionSet decodesTo Github.Object.Commit -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onCommitCommentThread : SelectionSet decodesTo Github.Object.CommitCommentThread -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onCommitCommentThread (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitCommentThread" fields decoder


onPullRequestReview : SelectionSet decodesTo Github.Object.PullRequestReview -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onPullRequestReview (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReview" fields decoder


onPullRequestReviewThread : SelectionSet decodesTo Github.Object.PullRequestReviewThread -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onPullRequestReviewThread (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewThread" fields decoder


onPullRequestReviewComment : SelectionSet decodesTo Github.Object.PullRequestReviewComment -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


onIssueComment : SelectionSet decodesTo Github.Object.IssueComment -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onClosedEvent : SelectionSet decodesTo Github.Object.ClosedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onClosedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ClosedEvent" fields decoder


onReopenedEvent : SelectionSet decodesTo Github.Object.ReopenedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onReopenedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReopenedEvent" fields decoder


onSubscribedEvent : SelectionSet decodesTo Github.Object.SubscribedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onSubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "SubscribedEvent" fields decoder


onUnsubscribedEvent : SelectionSet decodesTo Github.Object.UnsubscribedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onUnsubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnsubscribedEvent" fields decoder


onMergedEvent : SelectionSet decodesTo Github.Object.MergedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onMergedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MergedEvent" fields decoder


onReferencedEvent : SelectionSet decodesTo Github.Object.ReferencedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReferencedEvent" fields decoder


onCrossReferencedEvent : SelectionSet decodesTo Github.Object.CrossReferencedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onAssignedEvent : SelectionSet decodesTo Github.Object.AssignedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onAssignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AssignedEvent" fields decoder


onUnassignedEvent : SelectionSet decodesTo Github.Object.UnassignedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onUnassignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnassignedEvent" fields decoder


onLabeledEvent : SelectionSet decodesTo Github.Object.LabeledEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onLabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LabeledEvent" fields decoder


onUnlabeledEvent : SelectionSet decodesTo Github.Object.UnlabeledEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onUnlabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlabeledEvent" fields decoder


onMilestonedEvent : SelectionSet decodesTo Github.Object.MilestonedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onMilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MilestonedEvent" fields decoder


onDemilestonedEvent : SelectionSet decodesTo Github.Object.DemilestonedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onDemilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DemilestonedEvent" fields decoder


onRenamedTitleEvent : SelectionSet decodesTo Github.Object.RenamedTitleEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onRenamedTitleEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RenamedTitleEvent" fields decoder


onLockedEvent : SelectionSet decodesTo Github.Object.LockedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onLockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LockedEvent" fields decoder


onUnlockedEvent : SelectionSet decodesTo Github.Object.UnlockedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onUnlockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlockedEvent" fields decoder


onDeployedEvent : SelectionSet decodesTo Github.Object.DeployedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onDeployedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployedEvent" fields decoder


onHeadRefDeletedEvent : SelectionSet decodesTo Github.Object.HeadRefDeletedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onHeadRefDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefDeletedEvent" fields decoder


onHeadRefRestoredEvent : SelectionSet decodesTo Github.Object.HeadRefRestoredEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onHeadRefRestoredEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefRestoredEvent" fields decoder


onHeadRefForcePushedEvent : SelectionSet decodesTo Github.Object.HeadRefForcePushedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onHeadRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefForcePushedEvent" fields decoder


onBaseRefForcePushedEvent : SelectionSet decodesTo Github.Object.BaseRefForcePushedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onBaseRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefForcePushedEvent" fields decoder


onReviewRequestedEvent : SelectionSet decodesTo Github.Object.ReviewRequestedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onReviewRequestedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestedEvent" fields decoder


onReviewRequestRemovedEvent : SelectionSet decodesTo Github.Object.ReviewRequestRemovedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onReviewRequestRemovedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestRemovedEvent" fields decoder


onReviewDismissedEvent : SelectionSet decodesTo Github.Object.ReviewDismissedEvent -> FragmentSelectionSet decodesTo Github.Union.PullRequestTimelineItem
onReviewDismissedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissedEvent" fields decoder
