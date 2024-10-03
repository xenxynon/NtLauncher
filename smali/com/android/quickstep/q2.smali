.class public final synthetic Lcom/android/quickstep/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/q2;->g:Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;->S(Lcom/android/quickstep/LauncherBackAnimationController$OnBackInvokedCallback;)V

    return-void
.end method
