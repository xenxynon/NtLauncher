.class public final synthetic Lcom/android/quickstep/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/util/CancellableTask;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/m;->g:Lcom/android/quickstep/util/CancellableTask;

    iput-object p2, p0, Lcom/android/quickstep/util/m;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/m;->g:Lcom/android/quickstep/util/CancellableTask;

    iget-object p0, p0, Lcom/android/quickstep/util/m;->h:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/CancellableTask;->a(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V

    return-void
.end method