.class public final Landroidx/core/view/ViewKt$doOnNextLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewKt;->doOnNextLayout(Landroid/view/View;Ly5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $action:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Landroid/view/View;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Landroid/view/View;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/view/ViewKt$doOnNextLayout$1;->$action:Ly5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Landroidx/core/view/ViewKt$doOnNextLayout$1;->$action:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
