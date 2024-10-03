.class public final synthetic Lcom/android/quickstep/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

.field public final synthetic h:Landroid/window/BackMotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/s2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/quickstep/s2;->h:Landroid/window/BackMotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/s2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iget-object p0, p0, Lcom/android/quickstep/s2;->h:Landroid/window/BackMotionEvent;

    invoke-static {v0, p0}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->T(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Landroid/window/BackMotionEvent;)V

    return-void
.end method
