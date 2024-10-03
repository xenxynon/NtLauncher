.class public Lcom/android/launcher3/search/StringMatcherUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/search/StringMatcherUtility;->lambda$getListOfBreakpoints$1(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/search/StringMatcherUtility;->lambda$getListOfBreakpoints$0(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public static getListOfBreakpoints(Ljava/lang/CharSequence;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Lcom/android/launcher3/util/IntArray;
    .locals 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    sget-object v2, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getType(I)I

    move-result v5

    :goto_0
    if-ge v4, v0, :cond_3

    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-static {p0, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getType(I)I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    invoke-virtual {p1, v5, v3, v6}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->isBreak(III)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    move v5, v6

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Ls/a;

    invoke-direct {v0, p0}, Ls/a;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    sget-object p1, Ls/b;->a:Ls/b;

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getListOfBreakpoints$0(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/android/launcher3/search/StringMatcherUtility;->SPACE:Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getListOfBreakpoints$1(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_4

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/search/StringMatcherUtility;->requestSimpleFuzzySearch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    sub-int v4, v1, v0

    move v5, v2

    move v6, v5

    :goto_0
    if-gt v5, v4, :cond_4

    const/4 v7, 0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v5, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-virtual {p2, v3, v6, v8}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->isBreak(III)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int v6, v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p0, v6}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    move v3, v8

    goto :goto_0

    :cond_4
    :goto_2
    return v2
.end method

.method private static requestSimpleFuzzySearch(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/android/launcher3/search/StringMatcherUtility$1;->$SwitchMap$java$lang$Character$UnicodeScript:[I

    invoke-static {v2}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v0
.end method
