.class public final synthetic Lcom/android/quickstep/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/FallbackSwipeHandler;

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z1;->g:Lcom/android/quickstep/FallbackSwipeHandler;

    iput-object p2, p0, Lcom/android/quickstep/z1;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/z1;->g:Lcom/android/quickstep/FallbackSwipeHandler;

    iget-object p0, p0, Lcom/android/quickstep/z1;->h:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/FallbackSwipeHandler;->n0(Lcom/android/quickstep/FallbackSwipeHandler;Ljava/lang/Runnable;)V

    return-void
.end method
