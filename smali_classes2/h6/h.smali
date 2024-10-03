.class final Lh6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/g;


# instance fields
.field private final a:Ljava/util/regex/Matcher;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Lh6/f;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/h;->a:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lh6/h;->b:Ljava/lang/CharSequence;

    new-instance p1, Lh6/h$a;

    invoke-direct {p1, p0}, Lh6/h$a;-><init>(Lh6/h;)V

    iput-object p1, p0, Lh6/h;->c:Lh6/f;

    return-void
.end method

.method public static final synthetic a(Lh6/h;)Ljava/util/regex/MatchResult;
    .locals 0

    invoke-direct {p0}, Lh6/h;->b()Ljava/util/regex/MatchResult;

    move-result-object p0

    return-object p0
.end method

.method private final b()Ljava/util/regex/MatchResult;
    .locals 0

    iget-object p0, p0, Lh6/h;->a:Ljava/util/regex/Matcher;

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lh6/h;->b()Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object p0

    const-string v0, "matchResult.group()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public next()Lh6/g;
    .locals 3

    invoke-direct {p0}, Lh6/h;->b()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->end()I

    move-result v0

    invoke-direct {p0}, Lh6/h;->b()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    invoke-direct {p0}, Lh6/h;->b()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/regex/MatchResult;->start()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lh6/h;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lh6/h;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lh6/h;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher.pattern().matcher(input)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh6/h;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0, p0}, Lh6/j;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lh6/g;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
