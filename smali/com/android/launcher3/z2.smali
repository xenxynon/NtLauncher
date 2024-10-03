.class public final synthetic Lcom/android/launcher3/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/MultipageCellLayout;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/z2;->a:Lcom/android/launcher3/MultipageCellLayout;

    iput p2, p0, Lcom/android/launcher3/z2;->b:I

    iput p3, p0, Lcom/android/launcher3/z2;->c:I

    iput p4, p0, Lcom/android/launcher3/z2;->d:I

    iput p5, p0, Lcom/android/launcher3/z2;->e:I

    iput-object p6, p0, Lcom/android/launcher3/z2;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/android/launcher3/z2;->g:[I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/z2;->a:Lcom/android/launcher3/MultipageCellLayout;

    iget v1, p0, Lcom/android/launcher3/z2;->b:I

    iget v2, p0, Lcom/android/launcher3/z2;->c:I

    iget v3, p0, Lcom/android/launcher3/z2;->d:I

    iget v4, p0, Lcom/android/launcher3/z2;->e:I

    iget-object v5, p0, Lcom/android/launcher3/z2;->f:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/z2;->g:[I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/MultipageCellLayout;->e(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
