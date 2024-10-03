.class public final synthetic Ln4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic g:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/i;->g:Ly5/l;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln4/i;->g:Ly5/l;

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment;->a(Ly5/l;Ljava/lang/Object;)V

    return-void
.end method
