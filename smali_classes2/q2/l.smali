.class public final synthetic Lq2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lq2/m;

.field public final synthetic h:I

.field public final synthetic i:Lcom/android/launcher3/util/PendingRequestArgs;

.field public final synthetic j:Lcom/nothing/cardhost/e;


# direct methods
.method public synthetic constructor <init>(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/l;->g:Lq2/m;

    iput p2, p0, Lq2/l;->h:I

    iput-object p3, p0, Lq2/l;->i:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object p4, p0, Lq2/l;->j:Lcom/nothing/cardhost/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lq2/l;->g:Lq2/m;

    iget v1, p0, Lq2/l;->h:I

    iget-object v2, p0, Lq2/l;->i:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object p0, p0, Lq2/l;->j:Lcom/nothing/cardhost/e;

    invoke-static {v0, v1, v2, p0}, Lq2/m;->P(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V

    return-void
.end method
