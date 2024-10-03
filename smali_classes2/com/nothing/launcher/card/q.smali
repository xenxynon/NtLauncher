.class public final synthetic Lcom/nothing/launcher/card/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/card/r;

.field public final synthetic h:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/q;->g:Lcom/nothing/launcher/card/r;

    iput-object p2, p0, Lcom/nothing/launcher/card/q;->h:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/card/q;->g:Lcom/nothing/launcher/card/r;

    iget-object p0, p0, Lcom/nothing/launcher/card/q;->h:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/nothing/launcher/card/r;->g0(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V

    return-void
.end method
