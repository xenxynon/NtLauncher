.class public final synthetic Lcom/android/quickstep/util/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

.field public final synthetic h:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic i:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/u0;->g:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iput-object p2, p0, Lcom/android/quickstep/util/u0;->h:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p3, p0, Lcom/android/quickstep/util/u0;->i:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/u0;->g:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;

    iget-object v1, p0, Lcom/android/quickstep/util/u0;->h:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/util/u0;->i:Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;->a(Lcom/android/quickstep/util/SplitWithKeyboardShortcutController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitWithKeyboardShortcutController$SplitWithKeyboardShortcutRecentsAnimationListener;)V

    return-void
.end method
