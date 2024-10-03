.class public abstract Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final bgCircleRing:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPackItem:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPackItemImg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPackItemName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Ls4/c;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;->bgCircleRing:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;->iconPackItem:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;->iconPackItemImg:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;->iconPackItemName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setViewModel(Ls4/c;)V
    .param p1    # Ls4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
