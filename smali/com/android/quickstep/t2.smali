.class public final synthetic Lcom/android/quickstep/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

.field public final synthetic h:Lcom/android/quickstep/LauncherBackAnimationController;

.field public final synthetic i:Landroid/window/BackMotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/t2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iput-object p2, p0, Lcom/android/quickstep/t2;->h:Lcom/android/quickstep/LauncherBackAnimationController;

    iput-object p3, p0, Lcom/android/quickstep/t2;->i:Landroid/window/BackMotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/t2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    iget-object v1, p0, Lcom/android/quickstep/t2;->h:Lcom/android/quickstep/LauncherBackAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/t2;->i:Landroid/window/BackMotionEvent;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->R(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;Lcom/android/quickstep/LauncherBackAnimationController;Landroid/window/BackMotionEvent;)V

    return-void
.end method
