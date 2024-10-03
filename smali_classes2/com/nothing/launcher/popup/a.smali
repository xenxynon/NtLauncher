.class public final synthetic Lcom/nothing/launcher/popup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lcom/nothing/launcher/popup/b;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/popup/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/popup/a;->a:Lcom/nothing/launcher/popup/b;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/a;->a:Lcom/nothing/launcher/popup/b;

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/b;->c(Lcom/nothing/launcher/popup/b;I)I

    move-result p0

    return p0
.end method
