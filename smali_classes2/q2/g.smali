.class public final synthetic Lq2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq2/m;


# direct methods
.method public synthetic constructor <init>(ILq2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq2/g;->a:I

    iput-object p2, p0, Lq2/g;->b:Lq2/m;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lq2/g;->a:I

    iget-object p0, p0, Lq2/g;->b:Lq2/m;

    invoke-static {v0, p0, p1, p2}, Lq2/m;->N(ILq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
