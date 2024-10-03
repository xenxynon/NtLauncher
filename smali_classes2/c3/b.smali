.class public final Lc3/b;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/b$a;
    }
.end annotation


# static fields
.field public static final j:Lc3/b$a;


# instance fields
.field private final g:Lcom/android/launcher3/model/data/FolderInfo;

.field private h:I

.field private final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc3/b;->j:Lc3/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc3/b;->g:Lcom/android/launcher3/model/data/FolderInfo;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f090000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lc3/b;->i:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lc3/b;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {v0}, La4/d;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "context"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc3/b;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, La4/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x1

    new-array v5, v4, [[I

    sget-object v6, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [I

    sget-object v6, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lz3/d;->e(Landroid/content/Context;)I

    move-result v1

    aput v1, v4, v7

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lc3/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lz3/d;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lc3/b;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {v0}, La4/d;->b(Ljava/lang/String;)Ln5/k;

    move-result-object v0

    invoke-virtual {v0}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lc3/b;->g:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, Lc3/b;->h:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eee147b    # 0.465f

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lc3/b;->h:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lc3/b;->i:Landroid/graphics/Rect;

    add-int v2, p1, v0

    invoke-virtual {v1, p2, p1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lc3/b;->a()V

    return-void
.end method
