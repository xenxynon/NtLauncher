.class public Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliceWrapper"
.end annotation


# instance fields
.field final mId:J

.field final mItem:Landroidx/slice/SliceItem;

.field final mType:I


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mItem:Landroidx/slice/SliceItem;

    invoke-static {p1}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->getFormat(Landroidx/slice/SliceItem;)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mType:I

    invoke-virtual {p2, p1}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->getId(Landroidx/slice/SliceItem;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mId:J

    return-void
.end method

.method public static getFormat(Landroidx/slice/SliceItem;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "source"

    invoke-static {p0, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const-string v0, "horizontal"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "list_item"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
