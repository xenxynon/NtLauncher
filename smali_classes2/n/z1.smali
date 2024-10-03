.class public final synthetic Ln/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/z1;->g:Ly5/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln/z1;->g:Ly5/l;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->o(Ly5/l;Ljava/lang/Object;)V

    return-void
.end method
