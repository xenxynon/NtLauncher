.class public final synthetic Ln/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Ljava/util/stream/Stream$Builder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/d0;->g:Ljava/util/stream/Stream$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln/d0;->g:Ljava/util/stream/Stream$Builder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream$Builder;->accept(Ljava/lang/Object;)V

    return-void
.end method
