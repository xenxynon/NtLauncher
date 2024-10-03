.class public final synthetic Ln/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/card/p;

.field public final synthetic h:Lcom/nothing/launcher/card/s;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/card/p;Lcom/nothing/launcher/card/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/w1;->g:Lcom/nothing/launcher/card/p;

    iput-object p2, p0, Ln/w1;->h:Lcom/nothing/launcher/card/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln/w1;->g:Lcom/nothing/launcher/card/p;

    iget-object p0, p0, Ln/w1;->h:Lcom/nothing/launcher/card/s;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->b(Lcom/nothing/launcher/card/p;Lcom/nothing/launcher/card/s;)V

    return-void
.end method
