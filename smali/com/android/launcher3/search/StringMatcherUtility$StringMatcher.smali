.class public Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/StringMatcherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringMatcher"
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/text/Collator;->setStrength(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/text/Collator;->setDecomposition(I)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    .locals 1

    new-instance v0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {v0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected isBreak(III)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_8

    packed-switch p2, :pswitch_data_0

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, p0, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/16 p3, 0x14

    if-eq p1, p3, :cond_1

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return v1

    :pswitch_0
    if-eq p2, v0, :cond_0

    const/16 p1, 0xa

    if-eq p2, p1, :cond_0

    const/16 p1, 0xb

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    :cond_1
    :goto_0
    :pswitch_1
    return p0

    :cond_2
    const/4 p1, 0x5

    if-gt p2, p1, :cond_4

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    move p0, v1

    :cond_4
    :goto_1
    return p0

    :cond_5
    if-eq p3, p0, :cond_6

    const/16 p1, 0x1c

    if-eq p3, p1, :cond_6

    if-eq p3, v0, :cond_6

    if-eqz p3, :cond_6

    return p0

    :cond_6
    if-eq p2, p0, :cond_7

    goto :goto_2

    :cond_7
    move p0, v1

    :cond_8
    :goto_2
    :pswitch_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0xffff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-le p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
