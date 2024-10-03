.class public final synthetic Lcom/android/quickstep/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

.field public final synthetic b:Lcom/android/quickstep/LauncherBackAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p2;->a:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/quickstep/p2;->b:Lcom/android/quickstep/LauncherBackAnimationController;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/p2;->a:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iget-object p0, p0, Lcom/android/quickstep/p2;->b:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->U(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackEvent;)V

    return-void
.end method
