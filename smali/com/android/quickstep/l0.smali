.class public final synthetic Lcom/android/quickstep/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/l0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/l0;->g:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->g0(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void
.end method