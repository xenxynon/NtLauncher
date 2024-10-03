.class public final Lh6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lh6/g;
    .locals 0

    invoke-static {p0, p1, p2}, Lh6/j;->c(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lh6/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ljava/util/regex/MatchResult;I)Le6/d;
    .locals 0

    invoke-static {p0, p1}, Lh6/j;->d(Ljava/util/regex/MatchResult;I)Le6/d;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lh6/g;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lh6/h;

    invoke-direct {p1, p0, p2}, Lh6/h;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static final d(Ljava/util/regex/MatchResult;I)Le6/d;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v0

    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result p0

    invoke-static {v0, p0}, Le6/e;->i(II)Le6/d;

    move-result-object p0

    return-object p0
.end method
