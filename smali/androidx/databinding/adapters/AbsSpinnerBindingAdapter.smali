.class public Landroidx/databinding/adapters/AbsSpinnerBindingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;Ljava/util/List;)V
    .locals 7
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "android:entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/databinding/adapters/ObservableListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0, p1}, Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1090008

    const v5, 0x1090009

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/databinding/adapters/ObservableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;III)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;[Ljava/lang/CharSequence;)V
    .locals 6
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "android:entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "[TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    array-length v4, p1

    if-ne v3, v4, :cond_1

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    invoke-interface {v0, v3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_4
    :goto_2
    return-void
.end method
