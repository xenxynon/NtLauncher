.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# instance fields
.field public final synthetic a:Ly5/p;


# direct methods
.method public synthetic constructor <init>(Ly5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->a:Ly5/p;

    return-void
.end method


# virtual methods
.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/e;->a:Ly5/p;

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentKt;->a(Ly5/p;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
